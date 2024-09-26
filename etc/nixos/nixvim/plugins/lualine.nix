{
  plugins.lualine = {
    enable = true;

    settings = {
      options = {
        component_separators = "";
        section_separators = {
          left = "";
          right = "";
        };
      };

      sections = {
        lualine_a = [
          {
            __unkeyed = "mode";
            separator = {
              left = "";
              right = "";
              color = {
                bg = "#282a36";
              };
            };
          }
        ];

        lualine_c = [
          {
            __unkeyed = "filetype";
            colored = true;
            icon_only = true;
            padding = {
              left = 1;
              right = 0;
            };
          }
          {
            __unkeyed = "filename";
            path = 1;
          }
        ];

        lualine_x = [{}];
        lualine_y = [{}];
        lualine_z = [
          {
            __unkeyed = "location";
            separator = {
              left = "";
              right = "";
            };
          }
        ];
      };
    };
  };
}
