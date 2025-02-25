{
  description = "A collection of flake templates";

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {

    templates = {
      slides = {
        path = ./slides;
        description = "Presentation development template using reveal.js";
        welcomeText = ''
          You have created a Reveal.js template that will help you manage
          your presentation. It comes with github actions.
        '';
      };

    };
  };
}
