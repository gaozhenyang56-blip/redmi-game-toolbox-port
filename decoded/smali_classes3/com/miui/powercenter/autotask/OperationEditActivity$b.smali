.class Lcom/miui/powercenter/autotask/OperationEditActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/OperationEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/autotask/OperationEditActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/autotask/OperationEditActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/OperationEditActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/autotask/OperationEditActivity;Lcom/miui/powercenter/autotask/OperationEditActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/OperationEditActivity$b;-><init>(Lcom/miui/powercenter/autotask/OperationEditActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/OperationEditActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/OperationEditActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Lcom/miui/powercenter/autotask/OperationEditActivity;->i0(Lcom/miui/powercenter/autotask/OperationEditActivity;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/OperationEditActivity;->f0()V

    :cond_2
    :goto_0
    return-void
.end method
