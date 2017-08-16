project('com.github.btkostner.colors', ['vala', 'c'],
    version: '0.0.1'
)

gnome = import('gnome')
i18n = import('i18n')

asresources = gnome.compile_resources(
    'as-resources', 'data/css.gresource.xml',
    source_dir: 'data',
    c_name: 'as'
)

conf = configuration_data()
conf.set_quoted('GETTEXT_PACKAGE', meson.project_name())
configure_file(output: 'config.h', configuration: conf)
config_h_dir = include_directories('.')

c_args = [
  '-include', 'config.h'
]

cc = meson.get_compiler('c')
m_dep = cc.find_library('m', required : false)

executable(
    meson.project_name(),
    'src/Application.vala',
    'src/Color.vala',
    'src/MainWindow.vala',
    asresources,
    c_args: c_args,
    dependencies: [
        dependency('clutter-1.0'),
        dependency('glib-2.0'),
        dependency('gobject-2.0'),
        dependency('gtk+-3.0'),
        dependency('granite'),
        m_dep
    ],
    install : true
)

meson.add_install_script('meson/post_install.py')

subdir('data')
