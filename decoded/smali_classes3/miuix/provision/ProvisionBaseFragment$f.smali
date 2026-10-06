.class Lmiuix/provision/ProvisionBaseFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/provision/ProvisionBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/ProvisionBaseFragment;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$f;->a:Lmiuix/provision/ProvisionBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment$f;->a:Lmiuix/provision/ProvisionBaseFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/provision/ProvisionBaseFragment;->y0(Z)V

    return-void
.end method
