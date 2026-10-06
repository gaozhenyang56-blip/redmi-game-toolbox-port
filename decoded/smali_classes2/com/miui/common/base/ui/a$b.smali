.class Lcom/miui/common/base/ui/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/base/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/common/base/ui/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/miui/common/base/ui/a;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/miui/common/base/ui/a;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/common/base/ui/a$b;->a:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/miui/common/base/ui/a$b;->b:Lcom/miui/common/base/ui/a;

    :goto_0
    iput-boolean p2, p0, Lcom/miui/common/base/ui/a$b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/common/base/ui/a;ZLcom/miui/common/base/ui/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/base/ui/a$b;-><init>(Lcom/miui/common/base/ui/a;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/a$b;->b:Lcom/miui/common/base/ui/a;

    iget-boolean v1, p0, Lcom/miui/common/base/ui/a$b;->c:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/a$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/base/ui/a;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/miui/common/base/ui/a;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void
.end method
