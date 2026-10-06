.class Ll7/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll7/b;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll7/b$j;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll7/b$j;

.field final synthetic b:Ll7/b;


# direct methods
.method constructor <init>(Ll7/b;Ll7/b$j;)V
    .locals 0

    iput-object p1, p0, Ll7/b$b;->b:Ll7/b;

    iput-object p2, p0, Ll7/b$b;->a:Ll7/b$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Ll7/b$b;->a:Ll7/b$j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ll7/b$j;->onCancel()V

    :cond_0
    return-void
.end method
