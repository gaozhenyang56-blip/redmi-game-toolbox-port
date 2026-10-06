.class Lcom/miui/monthreport/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/monthreport/a;->h(Ljava/lang/String;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/miui/monthreport/a;


# direct methods
.method constructor <init>(Lcom/miui/monthreport/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/a$a;->b:Lcom/miui/monthreport/a;

    iput-object p2, p0, Lcom/miui/monthreport/a$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/monthreport/a$a;->b:Lcom/miui/monthreport/a;

    iget-object v1, p0, Lcom/miui/monthreport/a$a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/monthreport/a;->a(Lcom/miui/monthreport/a;Ljava/util/List;)V

    return-void
.end method
