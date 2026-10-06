.class Lcom/miui/gamebooster/model/z$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/model/z$a;->j(IILcom/miui/gamebooster/model/y;ZLt5/r$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/gamebooster/model/y;

.field final synthetic c:Lt5/r$c;

.field final synthetic d:I

.field final synthetic e:Lcom/miui/gamebooster/model/z$a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/model/z$a;ILcom/miui/gamebooster/model/y;Lt5/r$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/z$a$d;->e:Lcom/miui/gamebooster/model/z$a;

    iput p2, p0, Lcom/miui/gamebooster/model/z$a$d;->a:I

    iput-object p3, p0, Lcom/miui/gamebooster/model/z$a$d;->b:Lcom/miui/gamebooster/model/y;

    iput-object p4, p0, Lcom/miui/gamebooster/model/z$a$d;->c:Lt5/r$c;

    iput p5, p0, Lcom/miui/gamebooster/model/z$a$d;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/model/z$a$d;->e:Lcom/miui/gamebooster/model/z$a;

    invoke-static {p1}, Lcom/miui/gamebooster/model/z$a;->b(Lcom/miui/gamebooster/model/z$a;)[Landroid/widget/CheckBox;

    move-result-object p1

    iget v0, p0, Lcom/miui/gamebooster/model/z$a$d;->a:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a$d;->b:Lcom/miui/gamebooster/model/y;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/model/y;->k(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/model/z$a$d;->c:Lt5/r$c;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/model/z$a$d;->d:I

    invoke-interface {p1, v0}, Lt5/r$c;->x(I)V

    :cond_0
    return-void
.end method
