.class Lmiuix/provision/CloudProvisionBaseActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/provision/CloudProvisionBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/CloudProvisionBaseActivity;


# direct methods
.method constructor <init>(Lmiuix/provision/CloudProvisionBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/CloudProvisionBaseActivity$a;->a:Lmiuix/provision/CloudProvisionBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {}, Lbm/i;->a()Lbm/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbm/i;->b(Landroid/view/WindowInsets;)V

    return-object p2
.end method
