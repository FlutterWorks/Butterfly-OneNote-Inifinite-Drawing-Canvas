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
rm -rf $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT/%{_bindir}
cp %{name}.sh $RPM_BUILD_ROOT/%{_bindir}

%clean
rm -rf $RPM_BUILD_ROOT

%files

linux/debian/usr/bin

%changelog

* Read more about it here: https://docs.butterfly.linwood.dev