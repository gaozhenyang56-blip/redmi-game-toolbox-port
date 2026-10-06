.class public final synthetic Lmiuix/bottomsheet/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/bottomsheet/i$i;


# direct methods
.method public synthetic constructor <init>(Lmiuix/bottomsheet/i$i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/bottomsheet/k;->a:Lmiuix/bottomsheet/i$i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/k;->a:Lmiuix/bottomsheet/i$i;

    invoke-static {v0}, Lmiuix/bottomsheet/i$i;->b(Lmiuix/bottomsheet/i$i;)V

    return-void
.end method
