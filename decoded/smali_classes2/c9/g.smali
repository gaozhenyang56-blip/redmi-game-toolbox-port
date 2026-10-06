.class public final synthetic Lc9/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lc9/e;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lc9/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc9/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lc9/g;->b:Lc9/e;

    iput p3, p0, Lc9/g;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc9/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lc9/g;->b:Lc9/e;

    iget v2, p0, Lc9/g;->c:I

    invoke-static {v0, v1, v2}, Lc9/h;->b(Ljava/lang/String;Lc9/e;I)V

    return-void
.end method
