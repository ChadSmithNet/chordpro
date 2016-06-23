# generated by wxGlade c933fc4b7225 on Thu Jun 23 14:22:29 2016
#
# To get wxPerl visit http://www.wxperl.it
#

use Wx qw[:allclasses];
use strict;
# begin wxGlade: dependencies
use Wx::Locale gettext => '_T';
# end wxGlade

# begin wxGlade: extracode
# end wxGlade

package App::Music::ChordPro::Wx::Main_wxg;

use Wx qw[:everything];
use base qw(Wx::Frame);
use strict;

# begin wxGlade: dependencies
use Wx::Locale gettext => '_T';
# end wxGlade

sub new {
    my( $self, $parent, $id, $title, $pos, $size, $style, $name ) = @_;
    $parent = undef              unless defined $parent;
    $id     = -1                 unless defined $id;
    $title  = ""                 unless defined $title;
    $pos    = wxDefaultPosition  unless defined $pos;
    $size   = wxDefaultSize      unless defined $size;
    $name   = ""                 unless defined $name;

    # begin wxGlade: App::Music::ChordPro::Wx::Main_wxg::new
    $style = wxDEFAULT_FRAME_STYLE 
        unless defined $style;

    $self = $self->SUPER::new( $parent, $id, $title, $pos, $size, $style, $name );
    

    # Menu Bar

    $self->{main_menubar} = Wx::MenuBar->new();
    my $wxglade_tmp_menu;
    $wxglade_tmp_menu = Wx::Menu->new();
    $wxglade_tmp_menu->Append(wxID_OPEN, _T("Open..."), "");
    $wxglade_tmp_menu->AppendSeparator();
    $wxglade_tmp_menu->Append(wxID_PREVIEW, _T("Preview\tCtrl-P"), "");
    $wxglade_tmp_menu->Append(wxID_SAVE, _T("Save..."), "");
    $wxglade_tmp_menu->AppendSeparator();
    $wxglade_tmp_menu->Append(wxID_EXIT, _T("Exit"), "");
    $self->{main_menubar}->Append($wxglade_tmp_menu, _T("File"));
    $wxglade_tmp_menu = Wx::Menu->new();
    $self->{main_menubar}->Append($wxglade_tmp_menu, _T("Edit"));
    $wxglade_tmp_menu = Wx::Menu->new();
    $wxglade_tmp_menu->Append(wxID_ABOUT, _T("About"), "");
    $self->{main_menubar}->Append($wxglade_tmp_menu, _T("About"));
    $self->SetMenuBar($self->{main_menubar});
    
    # Menu Bar end

    $self->{t_source} = Wx::TextCtrl->new($self, wxID_ANY, "", wxDefaultPosition, wxDefaultSize, wxTE_MULTILINE);
    $self->{l_msgs} = Wx::StaticText->new($self, wxID_ANY, _T("No messages."));
    $self->{b_preview} = Wx::Button->new($self, wxID_PREVIEW, "");

    $self->__set_properties();
    $self->__do_layout();

    Wx::Event::EVT_MENU($self, wxID_OPEN, $self->can('OnOpen'));
    Wx::Event::EVT_MENU($self, wxID_PREVIEW, $self->can('OnPreview'));
    Wx::Event::EVT_MENU($self, wxID_SAVE, $self->can('OnSave'));
    Wx::Event::EVT_MENU($self, wxID_EXIT, $self->can('OnExit'));
    Wx::Event::EVT_MENU($self, wxID_ABOUT, $self->can('OnAbout'));
    Wx::Event::EVT_BUTTON($self, $self->{b_preview}->GetId, $self->can('OnPreview'));

    # end wxGlade
    return $self;

}


sub __set_properties {
    my $self = shift;
    # begin wxGlade: App::Music::ChordPro::Wx::Main_wxg::__set_properties
    $self->SetTitle(_T("ChordPro"));
    $self->SetSize($self->ConvertDialogSizeToPixels(Wx::Size->new(400, 300)));
    # end wxGlade
}

sub __do_layout {
    my $self = shift;
    # begin wxGlade: App::Music::ChordPro::Wx::Main_wxg::__do_layout
    $self->{sz_outer} = Wx::BoxSizer->new(wxVERTICAL);
    $self->{sz_main} = Wx::BoxSizer->new(wxVERTICAL);
    $self->{sz_buttons} = Wx::BoxSizer->new(wxHORIZONTAL);
    $self->{sz_source} = Wx::StaticBoxSizer->new(Wx::StaticBox->new($self, wxID_ANY, ""), wxHORIZONTAL);
    $self->{sz_source}->Add($self->{t_source}, 1, wxEXPAND, 5);
    $self->{sz_main}->Add($self->{sz_source}, 1, wxALL|wxEXPAND, 5);
    $self->{sz_buttons}->Add($self->{l_msgs}, 0, wxALIGN_CENTER_VERTICAL|wxEXPAND, 0);
    $self->{sz_buttons}->Add(0, 0, 1, wxEXPAND, 0);
    $self->{sz_buttons}->Add($self->{b_preview}, 0, 0, 0);
    $self->{sz_main}->Add($self->{sz_buttons}, 0, wxBOTTOM|wxEXPAND|wxLEFT|wxRIGHT, 5);
    $self->{sz_outer}->Add($self->{sz_main}, 1, wxEXPAND, 0);
    $self->SetSizer($self->{sz_outer});
    $self->Layout();
    # end wxGlade
}

sub OnOpen {
    my ($self, $event) = @_;
    # wxGlade: App::Music::ChordPro::Wx::Main_wxg::OnOpen <event_handler>
    warn "Event handler (OnOpen) not implemented";
    $event->Skip;
    # end wxGlade
}


sub OnPreview {
    my ($self, $event) = @_;
    # wxGlade: App::Music::ChordPro::Wx::Main_wxg::OnPreview <event_handler>
    warn "Event handler (OnPreview) not implemented";
    $event->Skip;
    # end wxGlade
}


sub OnSave {
    my ($self, $event) = @_;
    # wxGlade: App::Music::ChordPro::Wx::Main_wxg::OnSave <event_handler>
    warn "Event handler (OnSave) not implemented";
    $event->Skip;
    # end wxGlade
}


sub OnExit {
    my ($self, $event) = @_;
    # wxGlade: App::Music::ChordPro::Wx::Main_wxg::OnExit <event_handler>
    warn "Event handler (OnExit) not implemented";
    $event->Skip;
    # end wxGlade
}


sub OnAbout {
    my ($self, $event) = @_;
    # wxGlade: App::Music::ChordPro::Wx::Main_wxg::OnAbout <event_handler>
    warn "Event handler (OnAbout) not implemented";
    $event->Skip;
    # end wxGlade
}


# end of class App::Music::ChordPro::Wx::Main_wxg

1;
