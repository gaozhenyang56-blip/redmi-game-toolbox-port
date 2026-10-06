.class Lcom/miui/powercenter/autotask/OperationEditActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/autotask/OperationEditActivity;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/autotask/OperationEditActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/OperationEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/OperationEditActivity$a;->a:Lcom/miui/powercenter/autotask/OperationEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/OperationEditActivity$a;->a:Lcom/miui/powercenter/autotask/OperationEditActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method
