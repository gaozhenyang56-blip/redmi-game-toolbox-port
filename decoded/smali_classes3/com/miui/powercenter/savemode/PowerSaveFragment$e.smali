.class Lcom/miui/powercenter/savemode/PowerSaveFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/savemode/PowerSaveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/savemode/PowerSaveFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/savemode/PowerSaveFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/savemode/PowerSaveFragment;Lcom/miui/powercenter/savemode/PowerSaveFragment$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/savemode/PowerSaveFragment$e;-><init>(Lcom/miui/powercenter/savemode/PowerSaveFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/savemode/PowerSaveFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    instance-of v2, p1, Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_a

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable_power_save_mode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    new-instance p1, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$a;

    invoke-direct {p1, p0, v0, p2}, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$a;-><init>(Lcom/miui/powercenter/savemode/PowerSaveFragment$e;Lcom/miui/powercenter/savemode/PowerSaveFragment;Z)V

    invoke-static {p1}, Lx4/f;->b(Ljava/lang/Runnable;)V

    invoke-static {p2}, Lhd/a;->h1(Z)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lhd/a;->E(I)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "key_ontime_enabled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lgd/c;->D2(Z)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-static {p1}, Lie/a;->f(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/powercenter/savemode/PowerSaveFragment;->a0(Lcom/miui/powercenter/savemode/PowerSaveFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {v0}, Lcom/miui/powercenter/savemode/PowerSaveFragment;->b0(Lcom/miui/powercenter/savemode/PowerSaveFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lie/a;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/powercenter/savemode/PowerSaveFragment;->a0(Lcom/miui/powercenter/savemode/PowerSaveFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {v0}, Lcom/miui/powercenter/savemode/PowerSaveFragment;->b0(Lcom/miui/powercenter/savemode/PowerSaveFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    invoke-static {p2}, Lhd/a;->g1(Z)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto_exit_power_save_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_3

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1212ef

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1212ee

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x104000a

    new-instance v2, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$d;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$d;-><init>(Lcom/miui/powercenter/savemode/PowerSaveFragment$e;)V

    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$c;

    invoke-direct {v2, p0, v0}, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$c;-><init>(Lcom/miui/powercenter/savemode/PowerSaveFragment$e;Lcom/miui/powercenter/savemode/PowerSaveFragment;)V

    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$b;

    invoke-direct {v1, p0, v0}, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$b;-><init>(Lcom/miui/powercenter/savemode/PowerSaveFragment$e;Lcom/miui/powercenter/savemode/PowerSaveFragment;)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lgd/c;->Z0(Z)V

    :goto_1
    invoke-static {p2}, Lhd/a;->f1(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_notification_wakeup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lgd/c;->w1(Z)V

    invoke-static {p2}, Lhd/a;->X(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_xiaoai_voice_wakeup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "power_center_xiaoai_voice"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p2}, Lhd/a;->Y(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_aod_display"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "permit_disable_aod_in_power_save_mode"

    invoke-static {p1, v0, p2}, Lah/e;->e(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preference_key_superpower_autoleave"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Lpg/d;->e(Z)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "preference_key_extreme_mode_button"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {p2}, Lgd/c;->F1(Z)V

    :cond_9
    :goto_2
    return v3

    :cond_a
    return v1
.end method
