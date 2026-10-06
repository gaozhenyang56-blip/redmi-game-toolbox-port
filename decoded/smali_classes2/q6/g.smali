.class public final synthetic Lq6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lq6/h;

.field public final synthetic b:I

.field public final synthetic c:Lcom/miui/gamebooster/model/o;


# direct methods
.method public synthetic constructor <init>(Lq6/h;ILcom/miui/gamebooster/model/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq6/g;->a:Lq6/h;

    iput p2, p0, Lq6/g;->b:I

    iput-object p3, p0, Lq6/g;->c:Lcom/miui/gamebooster/model/o;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lq6/g;->a:Lq6/h;

    iget v1, p0, Lq6/g;->b:I

    iget-object v2, p0, Lq6/g;->c:Lcom/miui/gamebooster/model/o;

    invoke-static {v0, v1, v2, p1}, Lq6/h;->k(Lq6/h;ILcom/miui/gamebooster/model/o;Landroid/view/View;)V

    return-void
.end method
