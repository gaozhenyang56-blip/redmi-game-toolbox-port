.class public final synthetic Lfg/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfg/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lfg/k;->b:Landroid/content/Context;

    iput p3, p0, Lfg/k;->c:I

    iput p4, p0, Lfg/k;->d:I

    iput-boolean p5, p0, Lfg/k;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lfg/k;->a:Ljava/lang/String;

    iget-object v1, p0, Lfg/k;->b:Landroid/content/Context;

    iget v2, p0, Lfg/k;->c:I

    iget v3, p0, Lfg/k;->d:I

    iget-boolean v4, p0, Lfg/k;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/simlock/c;->a(Ljava/lang/String;Landroid/content/Context;IIZ)V

    return-void
.end method
