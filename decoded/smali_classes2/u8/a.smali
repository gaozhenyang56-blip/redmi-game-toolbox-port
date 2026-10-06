.class public final synthetic Lu8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lu8/b;

.field public final synthetic b:Lq6/i;

.field public final synthetic c:Lcom/miui/gamebooster/model/n;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lu8/b;Lq6/i;Lcom/miui/gamebooster/model/n;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/a;->a:Lu8/b;

    iput-object p2, p0, Lu8/a;->b:Lq6/i;

    iput-object p3, p0, Lu8/a;->c:Lcom/miui/gamebooster/model/n;

    iput p4, p0, Lu8/a;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lu8/a;->a:Lu8/b;

    iget-object v1, p0, Lu8/a;->b:Lq6/i;

    iget-object v2, p0, Lu8/a;->c:Lcom/miui/gamebooster/model/n;

    iget v3, p0, Lu8/a;->d:I

    invoke-static {v0, v1, v2, v3, p1}, Lu8/b;->f(Lu8/b;Lq6/i;Lcom/miui/gamebooster/model/n;ILandroid/view/View;)V

    return-void
.end method
