.class Lcom/miui/securityscan/ui/settings/SettingsFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/ui/settings/SettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$g;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$g;->b:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/ui/settings/SettingsFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->d0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$g;->b:Z

    invoke-static {p2, v0}, Lpf/i;->v(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->e0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$g;->b:Z

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-boolean p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$g;->b:Z

    invoke-static {p1, p2}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->f0(Lcom/miui/securityscan/ui/settings/SettingsFragment;Z)V

    return-void
.end method
