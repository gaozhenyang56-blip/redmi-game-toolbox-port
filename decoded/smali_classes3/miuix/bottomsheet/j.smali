.class public final synthetic Lmiuix/bottomsheet/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/bottomsheet/i$h;


# direct methods
.method public synthetic constructor <init>(Lmiuix/bottomsheet/i$h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/bottomsheet/j;->a:Lmiuix/bottomsheet/i$h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/j;->a:Lmiuix/bottomsheet/i$h;

    invoke-static {v0}, Lmiuix/bottomsheet/i$h;->b(Lmiuix/bottomsheet/i$h;)V

    return-void
.end method
