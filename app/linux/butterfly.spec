Name:           butterfly
Version:        1.4.0.rc.1
Release:        35
Summary:        A simple hello world script
BuildArch:      noarch

License:        AGPL-3.0
Source0:        %{name}-%{version}.tar.gz

Requires:       bash

%description
Powerful, minimalistic, cross-platform, opensource note-taking app

%prep


%install
mkdir -p %{buildroot}
cp -rf linux/debian/usr/ %{buildroot}

%clean
rm -rf $RPM_BUILD_ROOT

%files

linux/debian

%changelog
