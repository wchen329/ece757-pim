/*
 * Copyright (c) 2006 The Regents of The University of Michigan
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met: redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer;
 * redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution;
 * neither the name of the copyright holders nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdio.h>
#include <math.h>

float sigmoid(float x)
{
	return 1/(1 + exp(-1*x));	
}

int main(int argc, char* argv[])
{
	float x[2];
	x[0] = 1;
	x[1] = -1;

	float wi0[20] = {0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0,-0.1,-0.2,-0.3,-0.4,-0.5,-0.6,-0.7,-0.8,-0.9,-1.0};
	float wi1[20] = {-0.1,-0.2,-0.3,-0.4,-0.5,-0.6,-0.7,-0.8,-0.9,-1.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0};
	float wo[20] = {0.5,0.6,0.0,0.0,0.1,0.6,0.7,0.8,0.3,1.0,-1.1,-0.2,1.3,-0.4,-0.5,0.6,-0.7,0.8,0.9,-1.0};

	float y = 0;
	float hidden_layer[20];
	float oi = 0;

	for (int i = 0; i < 20; i++)
	{
		oi = (0.5 + wi0[i]*x[0] + wi1[i]*x[1]);
 
		if(oi < 0) hidden_layer[i] = 0;
		else hidden_layer[i] = oi;
		y += wo[i]*oi;
	}
	y += 1; //bias on output
	y = sigmoid(y);
	printf("output %f \n", y);	


	return 0;
}

