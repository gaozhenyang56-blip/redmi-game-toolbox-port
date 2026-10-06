.class Lcom/miui/gamebooster/model/z$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/model/z$a;->j(IILcom/miui/gamebooster/model/y;ZLt5/r$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/gamebooster/model/y;

.field final synthetic c:Lt5/r$c;

.field final synthetic d:I

.field final synthetic e:Lcom/miui/gamebooster/model/z$a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/model/z$a;ZLcom/miui/gamebooster/model/y;Lt5/r$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/z$a$b;->e:Lcom/miui/gamebooster/model/z$a;

    iput-boolean p2, p0, Lcom/miui/gamebooster/model/z$a$b;->a:Z

    iput-object p3, p0, Lcom/miui/gamebooster/model/z$a$b;->b:Lcom/miui/gamebooster/model/y;

    iput-object p4, p0, Lcom/miui/gamebooster/model/z$a$b;->c:Lt5/r$c;

    iput p5, p0, Lcom/miui/gamebooster/model/z$a$b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-boolean p1, p0, Lcom/miui/gamebooster/model/z$a$b;->a:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/model/z$a$b;->b:Lcom/miui/gamebooster/model/y;

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/model/y;->k(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/model/z$a$b;->c:Lt5/r$c;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/miui/gamebooster/model/z$a$b;->d:I

    invoke-interface {p1, v1, v0}, Lt5/r$c;->t(IZ)V

    :cond_0
    return v0
.end method
