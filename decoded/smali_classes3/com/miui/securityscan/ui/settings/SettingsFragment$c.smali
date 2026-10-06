.class Lcom/miui/securityscan/ui/settings/SettingsFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
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

.field final synthetic b:Lcom/miui/securityscan/ui/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;Lcom/miui/securityscan/ui/settings/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$c;->b:Lcom/miui/securityscan/ui/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/securityscan/ui/settings/SettingsFragment;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->g0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p2, 0x0

    invoke-static {p2}, Lqf/c;->E0(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
