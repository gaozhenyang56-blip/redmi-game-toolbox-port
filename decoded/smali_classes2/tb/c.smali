.class public final synthetic Ltb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ltb/d$a;

.field public final synthetic b:Ltb/d$b;


# direct methods
.method public synthetic constructor <init>(Ltb/d$a;Ltb/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb/c;->a:Ltb/d$a;

    iput-object p2, p0, Ltb/c;->b:Ltb/d$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ltb/c;->a:Ltb/d$a;

    iget-object v1, p0, Ltb/c;->b:Ltb/d$b;

    invoke-static {v0, v1, p1}, Ltb/d$a;->a(Ltb/d$a;Ltb/d$b;Landroid/view/View;)V

    return-void
.end method
