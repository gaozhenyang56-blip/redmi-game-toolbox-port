.class public final synthetic Lr3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lr3/o;

.field public final synthetic b:Lr3/o$f;


# direct methods
.method public synthetic constructor <init>(Lr3/o;Lr3/o$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/m;->a:Lr3/o;

    iput-object p2, p0, Lr3/m;->b:Lr3/o$f;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lr3/m;->a:Lr3/o;

    iget-object v1, p0, Lr3/m;->b:Lr3/o$f;

    invoke-static {v0, v1, p1}, Lr3/o;->k(Lr3/o;Lr3/o$f;Landroid/view/View;)V

    return-void
.end method
