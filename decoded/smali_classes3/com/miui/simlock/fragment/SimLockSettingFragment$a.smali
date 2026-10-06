.class Lcom/miui/simlock/fragment/SimLockSettingFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


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

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment$a;->a:Lcom/miui/simlock/fragment/SimLockSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment$a;->a:Lcom/miui/simlock/fragment/SimLockSettingFragment;

    invoke-static {v0}, Lcom/miui/simlock/fragment/SimLockSettingFragment;->a0(Lcom/miui/simlock/fragment/SimLockSettingFragment;)Landroidx/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment$a;->a:Lcom/miui/simlock/fragment/SimLockSettingFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/simlock/fragment/SimLockSettingFragment;->b0(Lcom/miui/simlock/fragment/SimLockSettingFragment;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
