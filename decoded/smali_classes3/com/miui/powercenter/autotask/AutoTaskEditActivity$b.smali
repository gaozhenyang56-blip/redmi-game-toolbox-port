.class Lcom/miui/powercenter/autotask/AutoTaskEditActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/AutoTaskEditActivity;
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
            "Lcom/miui/powercenter/autotask/AutoTaskEditActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskEditActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskEditActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskEditActivity;Lcom/miui/powercenter/autotask/AutoTaskEditActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity$b;-><init>(Lcom/miui/powercenter/autotask/AutoTaskEditActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskEditActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    invoke-static {}, Lhd/b;->n()V

    invoke-static {p1}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->j0(Lcom/miui/powercenter/autotask/AutoTaskEditActivity;)Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;->e0()V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method
