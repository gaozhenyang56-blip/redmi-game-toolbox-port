.class public final synthetic Ll3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ll3/f;

.field public final synthetic b:Ll3/f$a;


# direct methods
.method public synthetic constructor <init>(Ll3/f;Ll3/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/e;->a:Ll3/f;

    iput-object p2, p0, Ll3/e;->b:Ll3/f$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ll3/e;->a:Ll3/f;

    iget-object v1, p0, Ll3/e;->b:Ll3/f$a;

    invoke-static {v0, v1, p1}, Ll3/f;->k(Ll3/f;Ll3/f$a;Landroid/view/View;)V

    return-void
.end method
