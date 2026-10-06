.class public final synthetic Lz7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/ui/touch/a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/ui/touch/a;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/b;->a:Lcom/miui/gamebooster/ui/touch/a;

    iput-object p2, p0, Lz7/b;->b:Ljava/lang/String;

    iput p3, p0, Lz7/b;->c:I

    iput p4, p0, Lz7/b;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lz7/b;->a:Lcom/miui/gamebooster/ui/touch/a;

    iget-object v1, p0, Lz7/b;->b:Ljava/lang/String;

    iget v2, p0, Lz7/b;->c:I

    iget v3, p0, Lz7/b;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gamebooster/ui/touch/a;->c(Lcom/miui/gamebooster/ui/touch/a;Ljava/lang/String;II)V

    return-void
.end method
