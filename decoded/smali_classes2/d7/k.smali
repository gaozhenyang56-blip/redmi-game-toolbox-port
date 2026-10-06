.class public final synthetic Ld7/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ld7/l;


# direct methods
.method public synthetic constructor <init>(Ld7/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/k;->a:Ld7/l;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ld7/k;->a:Ld7/l;

    invoke-static {v0, p1}, Ld7/l;->f(Ld7/l;Landroid/view/View;)V

    return-void
.end method
