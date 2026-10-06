.class Lcom/miui/simlock/fragment/SimLockSettingFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/simlock/fragment/SimLockSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/simlock/fragment/SimLockSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/simlock/fragment/SimLockSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment$b;->a:Lcom/miui/simlock/fragment/SimLockSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment$b;->a:Lcom/miui/simlock/fragment/SimLockSettingFragment;

    invoke-static {v0}, Lcom/miui/simlock/fragment/SimLockSettingFragment;->c0(Lcom/miui/simlock/fragment/SimLockSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment$b;->a:Lcom/miui/simlock/fragment/SimLockSettingFragment;

    invoke-static {p2}, Lcom/miui/simlock/fragment/SimLockSettingFragment;->d0(Lcom/miui/simlock/fragment/SimLockSettingFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "sim_lock_enable"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
