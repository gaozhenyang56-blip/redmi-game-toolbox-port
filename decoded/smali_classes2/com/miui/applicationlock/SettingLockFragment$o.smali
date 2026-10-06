.class Lcom/miui/applicationlock/SettingLockFragment$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/SettingLockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/applicationlock/SettingLockFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/SettingLockFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment$o;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/SettingLockFragment;Lcom/miui/applicationlock/SettingLockFragment$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/SettingLockFragment$o;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "SettingLockActivity"

    const-string v1, " restartFaceUnlock "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/SettingLockFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "SettingLockActivity"

    const-string v2, " onFaceAuthenticated "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->B0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->B0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f120855

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->C0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->D0(Lcom/miui/applicationlock/SettingLockFragment;)Lc3/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc3/d;->A(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "SettingLockActivity"

    const-string v1, " onFaceLocked "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Ljava/lang/String;I)V
    .locals 2

    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/applicationlock/SettingLockFragment;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "SettingLockActivity"

    const-string v1, " onFaceHelp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/miui/applicationlock/SettingLockFragment;->B0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/miui/applicationlock/SettingLockFragment;->B0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 2

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/SettingLockFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "SettingLockActivity"

    const-string v1, " onFaceAuthFailed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->B0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->B0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120854

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->g0(Lcom/miui/applicationlock/SettingLockFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->g0(Lcom/miui/applicationlock/SettingLockFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->C0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/SettingLockFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "SettingLockActivity"

    const-string v2, " onFaceStart "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->B0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->B0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12084a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method
