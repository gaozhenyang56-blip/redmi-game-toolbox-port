.class public final synthetic Lr3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lr3/o;

.field public final synthetic b:Lcom/miui/autotask/bean/e;

.field public final synthetic c:Lr3/o$c;


# direct methods
.method public synthetic constructor <init>(Lr3/o;Lcom/miui/autotask/bean/e;Lr3/o$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/n;->a:Lr3/o;

    iput-object p2, p0, Lr3/n;->b:Lcom/miui/autotask/bean/e;

    iput-object p3, p0, Lr3/n;->c:Lr3/o$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lr3/n;->a:Lr3/o;

    iget-object v1, p0, Lr3/n;->b:Lcom/miui/autotask/bean/e;

    iget-object v2, p0, Lr3/n;->c:Lr3/o$c;

    invoke-static {v0, v1, v2, p1}, Lr3/o;->n(Lr3/o;Lcom/miui/autotask/bean/e;Lr3/o$c;Landroid/view/View;)V

    return-void
.end method
