.class Lmiuix/provision/ProvisionBaseFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/provision/ProvisionBaseFragment$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/ProvisionBaseFragment$b;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionBaseFragment$b;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$b$a;->a:Lmiuix/provision/ProvisionBaseFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmiuix/provision/ProvisionBaseFragment$b$a;->a:Lmiuix/provision/ProvisionBaseFragment$b;

    iget-object v0, v0, Lmiuix/provision/ProvisionBaseFragment$b;->a:Lmiuix/provision/ProvisionBaseFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/provision/ProvisionBaseFragment;->z0(Z)V

    return-void
.end method
