.class Lcom/miui/optimizemanage/settings/SettingsFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


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

    iput-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$b;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$b;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->f0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lkb/a;->y(Z)V

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$b;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->g0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object v0

    if-ne p1, v0, :cond_3

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$b;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03004c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    move v0, v1

    move v2, v0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$b;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    aget v4, p1, v0

    invoke-static {v3, v4}, Lcom/miui/optimizemanage/settings/SettingsFragment;->h0(Lcom/miui/optimizemanage/settings/SettingsFragment;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget p1, p1, v2

    mul-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Lgd/c;->j2(I)V

    iget-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$b;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/settings/SettingsFragment;->g0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$b;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->i0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object v0

    if-ne p1, v0, :cond_6

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Llb/e;->b()[I

    move-result-object p1

    move v0, v1

    move v2, v0

    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$b;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    aget v4, p1, v0

    invoke-static {v3, v4}, Lcom/miui/optimizemanage/settings/SettingsFragment;->j0(Lcom/miui/optimizemanage/settings/SettingsFragment;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    aget p1, p1, v2

    invoke-static {p1}, Lkb/a;->w(I)V

    iget-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$b;->a:Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/settings/SettingsFragment;->i0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object p1

    goto :goto_1

    :cond_6
    :goto_3
    return v1
.end method
