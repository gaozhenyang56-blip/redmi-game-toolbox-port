.class Lcom/miui/permcenter/settings/PrivacyInputModeFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->n0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/settings/PrivacyInputModeFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$a;->a:Lcom/miui/permcenter/settings/PrivacyInputModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$a;->a:Lcom/miui/permcenter/settings/PrivacyInputModeFragment;

    invoke-static {p1}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->i0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
