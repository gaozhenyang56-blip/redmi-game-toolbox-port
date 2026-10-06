.class public final synthetic Lcom/miui/gamebooster/customview/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/customview/s;

.field public final synthetic b:Lcom/miui/gamebooster/customview/s$b;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/customview/s;Lcom/miui/gamebooster/customview/s$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/q;->a:Lcom/miui/gamebooster/customview/s;

    iput-object p2, p0, Lcom/miui/gamebooster/customview/q;->b:Lcom/miui/gamebooster/customview/s$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/q;->a:Lcom/miui/gamebooster/customview/s;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/q;->b:Lcom/miui/gamebooster/customview/s$b;

    invoke-static {v0, v1, p1}, Lcom/miui/gamebooster/customview/s;->d(Lcom/miui/gamebooster/customview/s;Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V

    return-void
.end method
