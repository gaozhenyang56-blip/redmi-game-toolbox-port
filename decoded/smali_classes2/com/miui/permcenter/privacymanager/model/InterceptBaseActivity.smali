.class public abstract Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/os/Bundle;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->a:I

    const-string v1, "KET_STEP_COUNT"

    iput-object v1, p0, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->b:Ljava/lang/String;

    const-string v1, "KEY_ALLOW_ENABLE"

    iput-object v1, p0, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->c:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->e:Z

    return-void
.end method


# virtual methods
.method public c0()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public d0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->e:Z

    return-void
.end method

.method public e0(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->a:I

    return-void
.end method

.method protected abstract f0()V
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->d:Landroid/os/Bundle;

    invoke-static {p0}, Lx4/y1;->h(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->f0()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lxb/a;->a(Landroid/view/Window;I)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->a:I

    const-string v1, "KET_STEP_COUNT"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;->e:Z

    const-string v1, "KEY_ALLOW_ENABLE"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
