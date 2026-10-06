.class Lvd/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvd/b;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvd/b;


# direct methods
.method constructor <init>(Lvd/b;)V
    .locals 0

    iput-object p1, p0, Lvd/b$c;->a:Lvd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lvd/b$c;->a:Lvd/b;

    invoke-static {v0}, Lvd/b;->b(Lvd/b;)V

    return-void
.end method
