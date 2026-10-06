.class public final synthetic Ll3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ll3/d;

.field public final synthetic b:Ll3/d$a;


# direct methods
.method public synthetic constructor <init>(Ll3/d;Ll3/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/c;->a:Ll3/d;

    iput-object p2, p0, Ll3/c;->b:Ll3/d$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ll3/c;->a:Ll3/d;

    iget-object v1, p0, Ll3/c;->b:Ll3/d$a;

    invoke-static {v0, v1, p1}, Ll3/d;->k(Ll3/d;Ll3/d$a;Landroid/view/View;)V

    return-void
.end method
