.class Lcom/miui/optimizemanage/settings/SettingsFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/settings/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$a;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$a;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->b0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$a;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/settings/SettingsFragment;->c0(Lcom/miui/optimizemanage/settings/SettingsFragment;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$a;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->d0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$a;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/settings/SettingsFragment;->e0(Lcom/miui/optimizemanage/settings/SettingsFragment;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
