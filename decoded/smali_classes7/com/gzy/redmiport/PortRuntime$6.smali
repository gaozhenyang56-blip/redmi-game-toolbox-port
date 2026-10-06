.class Lcom/gzy/redmiport/PortRuntime$6;
.super Ljava/lang/Object;
.source "PortRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/PortRuntime;->open(Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$process:Ljava/lang/Process;


# direct methods
.method constructor <init>(Ljava/lang/Process;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/gzy/redmiport/PortRuntime$6;->val$process:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/gzy/redmiport/PortRuntime$6;->val$process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception v0

    :goto_7
    return-void
.end method
