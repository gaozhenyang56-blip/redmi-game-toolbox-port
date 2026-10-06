.class public final synthetic Lmiuix/bottomsheet/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/bottomsheet/i;


# direct methods
.method public synthetic constructor <init>(Lmiuix/bottomsheet/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/bottomsheet/f;->a:Lmiuix/bottomsheet/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/f;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->a(Lmiuix/bottomsheet/i;)V

    return-void
.end method
