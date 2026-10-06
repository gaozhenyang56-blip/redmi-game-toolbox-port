.class Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$j;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->k0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$j;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo2/h;->A(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->o0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
