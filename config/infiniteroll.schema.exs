[
  mappings: [
    "phoenix.Elixir.Infiniteroll.Router.url.host": [
      doc: "Provide documentation for phoenix.Elixir.Infiniteroll.Router.url.host here.",
      to: "phoenix.Elixir.Infiniteroll.Router.url.host",
      datatype: :binary,
      default: "forum.supahmove.com"
    ],
    "phoenix.Elixir.Infiniteroll.Router.http.port": [
      doc: "Provide documentation for phoenix.Elixir.Infiniteroll.Router.http.port here.",
      to: "phoenix.Elixir.Infiniteroll.Router.http.port",
      datatype: :binary,
      default: "8888"
    ],
    "phoenix.Elixir.Infiniteroll.Router.https": [
      doc: "Provide documentation for phoenix.Elixir.Infiniteroll.Router.https here.",
      to: "phoenix.Elixir.Infiniteroll.Router.https",
      datatype: :atom,
      default: false
    ],
    "phoenix.Elixir.Infiniteroll.Router.secret_key_base": [
      doc: "Provide documentation for phoenix.Elixir.Infiniteroll.Router.secret_key_base here.",
      to: "phoenix.Elixir.Infiniteroll.Router.secret_key_base",
      datatype: :binary,
      default: "VEn9fCSbJRqcZ+QJz8JCoBzOJXDX9A2EFKqIjLv1fX8rxaWSDV3Mn02itHuImZYEmAbMtENx6A6U6GhzOAPq6A=="
    ],
    "phoenix.Elixir.Infiniteroll.Router.catch_errors": [
      doc: "Provide documentation for phoenix.Elixir.Infiniteroll.Router.catch_errors here.",
      to: "phoenix.Elixir.Infiniteroll.Router.catch_errors",
      datatype: :atom,
      default: true
    ],
    "phoenix.Elixir.Infiniteroll.Router.debug_errors": [
      doc: "Provide documentation for phoenix.Elixir.Infiniteroll.Router.debug_errors here.",
      to: "phoenix.Elixir.Infiniteroll.Router.debug_errors",
      datatype: :atom,
      default: false
    ],
    "phoenix.Elixir.Infiniteroll.Router.error_controller": [
      doc: "Provide documentation for phoenix.Elixir.Infiniteroll.Router.error_controller here.",
      to: "phoenix.Elixir.Infiniteroll.Router.error_controller",
      datatype: :atom,
      default: Infiniteroll.PageController
    ],
    "phoenix.Elixir.Infiniteroll.Router.session.store": [
      doc: "Provide documentation for phoenix.Elixir.Infiniteroll.Router.session.store here.",
      to: "phoenix.Elixir.Infiniteroll.Router.session.store",
      datatype: :atom,
      default: :cookie
    ],
    "phoenix.Elixir.Infiniteroll.Router.session.key": [
      doc: "Provide documentation for phoenix.Elixir.Infiniteroll.Router.session.key here.",
      to: "phoenix.Elixir.Infiniteroll.Router.session.key",
      datatype: :binary,
      default: "_infiniteroll_key"
    ],
    "logger.console.format": [
      doc: "Provide documentation for logger.console.format here.",
      to: "logger.console.format",
      datatype: :binary,
      default: """
      $time $metadata[$level] $message
      """
    ],
    "logger.console.metadata": [
      doc: "Provide documentation for logger.console.metadata here.",
      to: "logger.console.metadata",
      datatype: [
        list: :atom
      ],
      default: [
        :request_id
      ]
    ],
    "logger.console.level": [
      doc: "Provide documentation for logger.console.level here.",
      to: "logger.console.level",
      datatype: :atom,
      default: :info
    ]
  ],
  translations: [
  ]
]
