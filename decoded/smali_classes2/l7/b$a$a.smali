.class Ll7/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll7/b$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll7/b$a;


# direct methods
.method constructor <init>(Ll7/b$a;)V
    .locals 0

    iput-object p1, p0, Ll7/b$a$a;->a:Ll7/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ll7/b$a$a;->a:Ll7/b$a;

    iget-object v1, v0, Ll7/b$a;->a:Landroid/content/Context;

    iget-object v0, v0, Ll7/b$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lue/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
