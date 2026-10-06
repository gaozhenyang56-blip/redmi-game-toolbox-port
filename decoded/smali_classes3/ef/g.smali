.class public final synthetic Lef/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lef/m;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lef/m;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/g;->a:Lef/m;

    iput-object p2, p0, Lef/g;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lef/g;->a:Lef/m;

    iget-object v1, p0, Lef/g;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lef/m;->a(Lef/m;Ljava/lang/Runnable;)V

    return-void
.end method
