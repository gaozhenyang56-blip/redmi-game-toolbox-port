.class Lmiuix/provision/ProvisionBaseActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/provision/ProvisionBaseActivity;->B0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/ProvisionBaseActivity;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$h;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchExplorationStateChanged enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionBaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$h;->a:Lmiuix/provision/ProvisionBaseActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lbm/d;->u(Landroid/content/Context;Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt p1, v1, :cond_1

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$h;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1, v0, v0}, Lbm/d;->t(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$h;->a:Lmiuix/provision/ProvisionBaseActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbm/d;->u(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void
.end method
