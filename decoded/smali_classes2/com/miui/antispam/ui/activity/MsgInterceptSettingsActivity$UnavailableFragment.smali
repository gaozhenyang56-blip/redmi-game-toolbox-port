.class public Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$UnavailableFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnavailableFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a0()Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$UnavailableFragment;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$UnavailableFragment;->b0()Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$UnavailableFragment;

    move-result-object v0

    return-object v0
.end method

.method private static b0()Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$UnavailableFragment;
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$UnavailableFragment;

    invoke-direct {v0}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$UnavailableFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p2, 0x7f0e018a

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b036b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x7f0b036c

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f080d95

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f1200f3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method
