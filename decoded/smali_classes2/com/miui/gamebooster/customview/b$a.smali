.class public final Lcom/miui/gamebooster/customview/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/miui/gamebooster/customview/c$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/b$a;->a:Lcom/miui/gamebooster/customview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1    # Landroid/widget/CompoundButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Lcom/miui/gamebooster/model/e;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/miui/gamebooster/model/e;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/model/e;->f(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/b$a;->a:Lcom/miui/gamebooster/customview/b;

    invoke-virtual {p1}, Lcom/miui/gamebooster/customview/l;->getViewCoroutineScope()Llk/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/gamebooster/customview/b$a$a;

    iget-object p1, p0, Lcom/miui/gamebooster/customview/b$a;->a:Lcom/miui/gamebooster/customview/b;

    invoke-direct {v4, p1, v0}, Lcom/miui/gamebooster/customview/b$a$a;-><init>(Lcom/miui/gamebooster/customview/b;Ltj/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    invoke-static {}, La8/j;->l()V

    :cond_1
    return-void
.end method
