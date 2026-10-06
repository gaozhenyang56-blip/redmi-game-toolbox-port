.class public final synthetic Llg/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llg/j;


# direct methods
.method public synthetic constructor <init>(Llg/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llg/i;->a:Llg/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Llg/i;->a:Llg/j;

    invoke-static {v0}, Llg/j;->f(Llg/j;)V

    return-void
.end method
