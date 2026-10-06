.class public final synthetic Ly5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ly5/i;


# direct methods
.method public synthetic constructor <init>(Ly5/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly5/d;->a:Ly5/i;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ly5/d;->a:Ly5/i;

    invoke-static {v0, p1}, Ly5/i;->e(Ly5/i;Landroid/view/View;)V

    return-void
.end method
