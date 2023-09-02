<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <br>
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="{{ url(auth()->user()->foto ?? '') }}" class="img-circle img-profil" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>{{ auth()->user()->name }}</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online<br></a>

            </div>
        </div>
        <br>

        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-dashboard"></i> <span>{{ 'Dashboard' }}</span>
                </a>
            </li>

            @if (auth()->user()->level == 1)
                <li class="header">DATA MASTER</li>
                <li>
                    <a href="{{ route('kategori.index') }}">
                        <i class="fa fa-cube"></i> <span>Kategori</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('pendamping.index') }}">
                        <i class="fa fa-users"></i> <span>Pendamping</span>
                    </a>
                </li>
                <li class="header">DATA TPCB</li>
              	<li>
                    <a href="{{ route('tpcb.index') }}">
                        <i class="fa fa-users"></i> <span>Tim TPCB</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('tpcbfungsi.index') }}">
                        <i class="fa fa-cubes"></i> <span>Tugas/Fungsi TPCB</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('tpcbcluster.index') }}">
                        <i class="fa fa-cubes"></i> <span>Cluster Binaan</span>
                    </a>
                </li>
          
                <li class="header">DATA PUSKESMAS</li>
                <li>
                    <a href="{{ route('puskesmas.index') }}">
                        <i class="fa fa-home"></i> <span>Puskesmas</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('pjmutupkm.index') }}">
                        <i class="fa fa-id-card"></i> <span>Pj Mutu Puskesmas</span>
                    </a>
                </li>
                <li class="header">DATA KLINIK</li>
                <li>
                    <a href="{{ route('klinik.index') }}">
                        <i class="fa fa-home"></i> <span>Klinik</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('pjmutuklinik.index') }}">
                        <i class="fa fa-id-card"></i> <span>Pj Mutu Klinik</span>
                    </a>
                </li>
                <li class="header">DOKUMEN</li>
                <li>
                    <a href="/vfm/">
                        <i class="fa fa-home"></i> <span>Dokumen</span>
                    </a>
                </li>
                <li>          
                <li class="header">SISTEM</li>
                <li>
                    <a href="{{ route('user.index') }}">
                        <i class="fa fa-users"></i> <span>Pengguna</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('setting.index') }}">
                        <i class="fa fa-cogs"></i> <span>Pengaturan</span>
                    </a>
                </li>
            @else
                <li class="header">DATA MASTER</li>
          		<li>
                    <a href="{{ route('pendamping2.index') }}">
                        <i class="fa fa-users"></i> <span>Pendamping</span>
                    </a>
                </li>
                <li class="header">DATA TPCB</li>
                <li>
                    <a href="{{ route('tpcb2.index') }}">
                        <i class="fa fa-users"></i> <span> Tim TPCB</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('tpcb2fungsi.index') }}">
                        <i class="fa fa-cubes"></i> <span>Tugas/Fungsi TPCB</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('tpcb2cluster.index') }}">
                        <i class="fa fa-cubes"></i> <span>Cluster Binaan</span>
                    </a>
                </li>

                <li class="header">DATA PUSKESMAS</li>
                <li>
                    <a href="{{ route('puskesmas2.index') }}">
                        <i class="fa fa-home"></i> <span>Puskesmas</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('pjmutupkm2.index') }}">
                        <i class="fa fa-id-card"></i> <span>Pj Mutu Puskesmas</span>
                    </a>
                </li>
                <li class="header">DATA KLINIK</li>
                <li>
                    <a href="{{ route('klinik2.index') }}">
                        <i class="fa fa-home"></i> <span>Klinik</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('pjmutuklinik2.index') }}">
                        <i class="fa fa-id-card"></i> <span>Pj Mutu Klinik</span>
                    </a>
                </li>
            @endif
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
