.class Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f12036f

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x3

    const/16 v3, 0x3e8

    if-eq v1, v2, :cond_5

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->p0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->n0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/preference/SingleChoicePreferenceCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->e0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)[Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lmiuix/preference/SingleChoicePreferenceCategory;->x(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const v0, 0x7f12036e

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4

    const v0, 0x7f120370

    goto :goto_0

    :cond_4
    const v0, 0x7f120371

    goto :goto_0

    :cond_5
    const v0, 0x7f12036d

    :goto_0
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->o0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V

    :goto_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v3, :cond_6

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->q0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->r0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;I)V

    :cond_7
    return-void
.end method
