.class public final synthetic Lr3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lr3/q$b;


# direct methods
.method public synthetic constructor <init>(Lr3/q$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/s;->a:Lr3/q$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lr3/s;->a:Lr3/q$b;

    invoke-static {v0, p1}, Lr3/q$b;->a(Lr3/q$b;Landroid/view/View;)V

    return-void
.end method
