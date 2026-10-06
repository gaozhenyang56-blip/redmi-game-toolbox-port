.class public final synthetic Lu8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lu8/d;

.field public final synthetic b:I

.field public final synthetic c:Lq6/i;

.field public final synthetic d:Lcom/miui/gamebooster/model/n;


# direct methods
.method public synthetic constructor <init>(Lu8/d;ILq6/i;Lcom/miui/gamebooster/model/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/c;->a:Lu8/d;

    iput p2, p0, Lu8/c;->b:I

    iput-object p3, p0, Lu8/c;->c:Lq6/i;

    iput-object p4, p0, Lu8/c;->d:Lcom/miui/gamebooster/model/n;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lu8/c;->a:Lu8/d;

    iget v1, p0, Lu8/c;->b:I

    iget-object v2, p0, Lu8/c;->c:Lq6/i;

    iget-object v3, p0, Lu8/c;->d:Lcom/miui/gamebooster/model/n;

    invoke-static {v0, v1, v2, v3, p1}, Lu8/d;->f(Lu8/d;ILq6/i;Lcom/miui/gamebooster/model/n;Landroid/view/View;)V

    return-void
.end method
