.class public final synthetic Lef/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef/m$a;


# instance fields
.field public final synthetic a:Lef/m;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lef/m;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/d;->a:Lef/m;

    iput-object p2, p0, Lef/d;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lef/d;->a:Lef/m;

    iget-object v1, p0, Lef/d;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1}, Lef/m;->e(Lef/m;Ljava/lang/Runnable;Z)V

    return-void
.end method
