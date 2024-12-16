{
  description = "A flake for working on smartkidsllc.github.io";

  inputs = {
    # update-script-part-1 will automatically keep this input up to date:
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    # update-script-part-1 will automatically keep this input up to date:
    flake-utils.url = "github:numtide/flake-utils/v1.0.0";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages."${system}";
      in
      {
        packages = {
          update-script-part-1 =
            pkgs.resholve.writeScriptBin "update-script-part-1"
              {
                inputs = [
                  pkgs.coreutils
                  pkgs.gh
                  pkgs.gitMinimal
                  pkgs.gnused
                  pkgs.nix
                ];
                execer = [
                  "cannot:${pkgs.lib.meta.getExe pkgs.nix}"
                  # TODO: These next ones can be removed when they’re fixed
                  # upstream:
                  "cannot:${pkgs.lib.meta.getExe pkgs.gh}"
                  "cannot:${pkgs.lib.meta.getExe pkgs.gitMinimal}"
                ];
                interpreter = pkgs.lib.meta.getExe pkgs.bash;
              }
              ''
                set -o errexit -o nounset -o pipefail

                function run_nix {
                  nix \
                    --extra-experimental-features 'nix-command flakes' \
                    "$@"
                }

                function get_flake_input_branch_or_tag {
                  local -r input_name="$1"
                  local flake_url
                  flake_url="$(run_nix eval \
                    --impure \
                    --raw \
                    --expr "(import ./flake.nix).inputs.$input_name.url"
                  )"
                  readonly flake_url
                  printf '%s' "$flake_url" | cut --delimiter=/ --fields=3
                }

                # Flake inputs
                ## nixpkgs
                current_nixpkgs_branch="$(get_flake_input_branch_or_tag nixpkgs)"
                readonly current_nixpkgs_branch
                latest_nixpkgs_branch="$(git ls-remote --heads https://github.com/NixOS/nixpkgs 'nixos-??.??' \
                  | tail --lines=1 \
                  | cut --fields=2 \
                  | cut --delimiter=/ --fields=3
                )"
                if [ "$current_nixpkgs_branch" != "$latest_nixpkgs_branch" ]
                then
                  sed --in-place "s/$current_nixpkgs_branch/$latest_nixpkgs_branch/g" flake.nix
                fi

                ## flake-utils
                current_flake_utils_tag="$(get_flake_input_branch_or_tag flake-utils)"
                latest_flake_utils_tag="$(gh release view --repo numtide/flake-utils --json tagName --jq '.tagName')"
                if [ "$current_flake_utils_tag" != "$latest_flake_utils_tag" ]
                then
                  sed --in-place "s/$current_flake_utils_tag/$latest_flake_utils_tag/g" flake.nix
                fi

                # Flake lock file
                run_nix flake update
              '';
          update-script-part-2 =
            pkgs.resholve.writeScriptBin "update-script-part-2"
              {
                inputs = [
                  pkgs.corepack
                ];
                execer = [
                  # TODO: These next ones can be removed when they’re fixed
                  # upstream:
                  "cannot:${pkgs.corepack}/bin/yarn"
                ];
                interpreter = pkgs.lib.meta.getExe pkgs.bash;
              }
              ''
                set -o errexit -o nounset -o pipefail
                yarn install
                yarn run update-script-part-2
              '';
        };
        devShells.default = pkgs.mkShellNoCC {
          name = "shell-for-working-on-smartkidsllc.github.io";
          packages = [ pkgs.corepack ];
        };
      }
    );
}
