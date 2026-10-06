.class public final synthetic Ld5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg5/j;


# direct methods
.method public synthetic constructor <init>(ILg5/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld5/c;->a:I

    iput-object p2, p0, Ld5/c;->b:Lg5/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ld5/c;->a:I

    iget-object v1, p0, Ld5/c;->b:Lg5/j;

    invoke-static {v0, v1}, Ld5/d;->k(ILg5/j;)V

    return-void
.end method
